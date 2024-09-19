CREATE TYPE tipe_input AS ENUM (
  'text',
  'textarea',
  'select',
  'checkbox',
  'file',
  'table'
);

CREATE TYPE jenis_item AS ENUM (
  'default',
  'custom'
);

CREATE TYPE status_evaluasi AS ENUM (
  'belum_diproses',
  'proses',
  'terevaluasi'
);
