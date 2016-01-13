Pod::Spec.new do |s|
  s.name         =  'leveldb-library'
  s.version      =  '1.18.1'
  s.license      =  'New BSD'
  s.summary      =  'A fast key-value storage library '
  s.description  =  'LevelDB is a fast key-value storage library written at Google that provides an ordered mapping from string keys to string values.'
  s.homepage     =  'https://github.com/google/leveldb'
  s.authors      =  'The LevelDB Authors'

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source       =  { :git => 'https://github.com/matehat/leveldb.git', :tag => 'v' + s.version.to_s }

  s.requires_arc = false

  s.compiler_flags = '-DOS_MACOSX', '-DLEVELDB_PLATFORM_POSIX'

  s.preserve_path = "leveldb-library"
  s.xcconfig = {
    'CC'  => 'clang',
    'CXX' => 'clang++',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/leveldb-library/"',
    'OTHER_LDFLAGS' => '-lc++'
  }

  s.header_dir = "leveldb"
  s.source_files = [
    "include/leveldb/*",
    "util/*.{h}",
    "table/*.{h}",
    "port/*.{h}",
    "db/*.{h}",
    "db/builder.cc",
    "db/c.cc",
    "db/db_impl.cc",
    "db/db_iter.cc",
    "db/dbformat.cc",
    "db/filename.cc",
    "db/log_reader.cc",
    "db/log_writer.cc",
    "db/memtable.cc",
    "db/repair.cc",
    "db/table_cache.cc",
    "db/version_edit.cc",
    "db/version_set.cc",
    "db/write_batch.cc",
    "table/block.cc",
    "table/block_builder.cc",
    "table/filter_block.cc",
    "table/format.cc",
    "table/iterator.cc",
    "table/merger.cc",
    "table/table.cc",
    "table/table_builder.cc",
    "table/two_level_iterator.cc",
    "util/arena.cc",
    "util/bloom.cc",
    "util/cache.cc",
    "util/coding.cc",
    "util/comparator.cc",
    "util/crc32c.cc",
    "util/env.cc",
    "util/env_posix.cc",
    "util/filter_policy.cc",
    "util/hash.cc",
    "util/histogram.cc",
    "util/logging.cc",
    "util/options.cc",
    "util/status.cc",
    "port/port_posix.cc"
  ]

  s.public_header_files = [
    "include/leveldb/*.{h}",
    "include/**/*.{h}"
  ]

end