一对一： 一个表的记录，对应到另一个表的唯一记录。例如，每个学生，有自己的联系方式，这样在另外一张表contacts，建立外键一对一

id   student_id   mobile

既然是一对一，为啥不在student表加一列mobile，这是因为，如果某个学生没有手机号，contacts就不存在对应的记录。 如果和在一起则必须允许mobile为Null。
还有一些会将大表拆分成两个一对一的表，目的是将经常读取和不经常读取的字段分开，以提高性能。

例如，把一个大的用户表分拆为用户基本信息表user_info和用户详细信息表user_profiles，
大部分时候，只需要查询user_info表，并不需要查询user_profiles表，这样就提高了查询速度。
