const db = require('../data/config')

function find() {
  return db('schemes')
}

function findById(id) {
  return db('schemes')
    .where("id", id)
}

function findSteps(id) {
  return db('steps')
    .where("scheme_id", id)
}

function add(data) {
  return db('schemes')
    .insert(data)
}

function addStep(data, id) {
  return db('steps')
    .insert(data)
    .where('scheme_id', id)
}

function update(changes, id) {
  return db('schemes')
    .update(changes)
    .where("id", id)
}

function remove(id) {
  return db('schemes')
    .del()
    .where("id", id)
}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  addStep,
  update,
  remove,
}