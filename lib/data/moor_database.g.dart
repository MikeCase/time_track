// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Job extends DataClass implements Insertable<Job> {
  final int id;
  final String jobTitle;
  final DateTime jobDate;
  Job({@required this.id, @required this.jobTitle, this.jobDate});
  factory Job.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Job(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      jobTitle: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}job_title']),
      jobDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}job_date']),
    );
  }
  factory Job.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Job(
      id: serializer.fromJson<int>(json['id']),
      jobTitle: serializer.fromJson<String>(json['jobTitle']),
      jobDate: serializer.fromJson<DateTime>(json['jobDate']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'jobTitle': serializer.toJson<String>(jobTitle),
      'jobDate': serializer.toJson<DateTime>(jobDate),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Job>>(bool nullToAbsent) {
    return JobsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      jobTitle: jobTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(jobTitle),
      jobDate: jobDate == null && nullToAbsent
          ? const Value.absent()
          : Value(jobDate),
    ) as T;
  }

  Job copyWith({int id, String jobTitle, DateTime jobDate}) => Job(
        id: id ?? this.id,
        jobTitle: jobTitle ?? this.jobTitle,
        jobDate: jobDate ?? this.jobDate,
      );
  @override
  String toString() {
    return (StringBuffer('Job(')
          ..write('id: $id, ')
          ..write('jobTitle: $jobTitle, ')
          ..write('jobDate: $jobDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(jobTitle.hashCode, jobDate.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Job &&
          other.id == id &&
          other.jobTitle == jobTitle &&
          other.jobDate == jobDate);
}

class JobsCompanion extends UpdateCompanion<Job> {
  final Value<int> id;
  final Value<String> jobTitle;
  final Value<DateTime> jobDate;
  const JobsCompanion({
    this.id = const Value.absent(),
    this.jobTitle = const Value.absent(),
    this.jobDate = const Value.absent(),
  });
  JobsCompanion copyWith(
      {Value<int> id, Value<String> jobTitle, Value<DateTime> jobDate}) {
    return JobsCompanion(
      id: id ?? this.id,
      jobTitle: jobTitle ?? this.jobTitle,
      jobDate: jobDate ?? this.jobDate,
    );
  }
}

class $JobsTable extends Jobs with TableInfo<$JobsTable, Job> {
  final GeneratedDatabase _db;
  final String _alias;
  $JobsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _jobTitleMeta = const VerificationMeta('jobTitle');
  GeneratedTextColumn _jobTitle;
  @override
  GeneratedTextColumn get jobTitle => _jobTitle ??= _constructJobTitle();
  GeneratedTextColumn _constructJobTitle() {
    return GeneratedTextColumn('job_title', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _jobDateMeta = const VerificationMeta('jobDate');
  GeneratedDateTimeColumn _jobDate;
  @override
  GeneratedDateTimeColumn get jobDate => _jobDate ??= _constructJobDate();
  GeneratedDateTimeColumn _constructJobDate() {
    return GeneratedDateTimeColumn(
      'job_date',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, jobTitle, jobDate];
  @override
  $JobsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'jobs';
  @override
  final String actualTableName = 'jobs';
  @override
  VerificationContext validateIntegrity(JobsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.jobTitle.present) {
      context.handle(_jobTitleMeta,
          jobTitle.isAcceptableValue(d.jobTitle.value, _jobTitleMeta));
    } else if (jobTitle.isRequired && isInserting) {
      context.missing(_jobTitleMeta);
    }
    if (d.jobDate.present) {
      context.handle(_jobDateMeta,
          jobDate.isAcceptableValue(d.jobDate.value, _jobDateMeta));
    } else if (jobDate.isRequired && isInserting) {
      context.missing(_jobDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Job map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Job.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(JobsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.jobTitle.present) {
      map['job_title'] = Variable<String, StringType>(d.jobTitle.value);
    }
    if (d.jobDate.present) {
      map['job_date'] = Variable<DateTime, DateTimeType>(d.jobDate.value);
    }
    return map;
  }

  @override
  $JobsTable createAlias(String alias) {
    return $JobsTable(_db, alias);
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $JobsTable _jobs;
  $JobsTable get jobs => _jobs ??= $JobsTable(this);
  @override
  List<TableInfo> get allTables => [jobs];
}
