module prioridad::prioridad;
use std::string::String;
use sui::object::UID;
use sui::vec_map::{Self, VecMap};
use sui::coin::{Self as coin, Coin};

const ENotAuthorized: u64=0;
const JOYA: address= @0xa529944229a9796b1e27d412a1fc1c26a1589514432b25fc141746f1fa745fa0;

//Definición de la composición de una Prioridad
public struct Prioridad has key, store{
id: UID,
precio: u64}

//Definición de una lista que contiene las prioridades generadas en órden
public struct Registro_prioridades has key, store{
id: UID,
prioridades: vector<address>,}

//Función para crear el registro de prioridades
#[allow(lint(self_transfer))]
    public fun crear_registro(ctx: &mut TxContext) {
        let prioridades = vector[];

        let registro = Registro_prioridades {
            id: object::new(ctx),
            prioridades,};

        transfer::transfer(registro, tx_context::sender(ctx));}

//Función para crear prioridades 
public fun crear_prioridad(ctx: &mut TxContext){
    assert!(tx_context::sender(ctx)==JOYA, ENotAuthorized);
    let prioridad= Prioridad{
    id: object::new(ctx),
    precio: 0};
    transfer::transfer(prioridad, tx_context::sender(ctx));}

//Función para registrar prioridades
public fun registrar_prioridad(registro: &mut Registro_prioridades, prioridad_id:address){
    registro.prioridades.push_back(prioridad_id)}

//Función para actualizar el precio de una prioridad
public fun actualizar_precio(prioridad: &mut Prioridad, nuevo_precio:u64){
prioridad.precio=nuevo_precio;}

//Función para enviar la prioridad desde Cámara de Joyería hacia el dueño de la prioridad
public fun asignar_prioridad(prioridad: Prioridad, nuevo_dueno: address){
    transfer::transfer(prioridad, nuevo_dueno);}
