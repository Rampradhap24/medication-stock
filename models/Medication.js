const mongoose = require('mongoose');

const MedicationsSchema = new mongoose.Schema({
  name: String,
  quantity: Number,
  sold: Number,
});

module.exports = mongoose.models.Medications || mongoose.model('Medications', MedicationsSchema);
