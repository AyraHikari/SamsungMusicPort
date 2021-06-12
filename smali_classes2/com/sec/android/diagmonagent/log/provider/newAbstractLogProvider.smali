.class public abstract Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a()Landroid/os/Bundle;
    .locals 4

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    :try_start_0
    const-class v1, Lcom/samsung/context/sdk/samsunganalytics/BuildConfig;

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "diagmonSupportV1VersionName"

    .line 167
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private d()Landroid/os/Bundle;
    .locals 3

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    :try_start_0
    const-class v1, Lcom/samsung/context/sdk/samsunganalytics/BuildConfig;

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "diagmonSupportV1VersionCode"

    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 336
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 338
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 339
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 340
    :cond_0
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 341
    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 342
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 343
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    :cond_2
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 345
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 346
    :cond_3
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 347
    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 348
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 349
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method protected a(Ljava/util/List;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 199
    :catch_0
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 201
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected a(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 369
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 371
    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v3, 0x0

    .line 375
    :try_start_1
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    :catch_1
    :try_start_2
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-wide/16 v2, 0x0

    .line 383
    :try_start_3
    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x0

    .line 387
    :try_start_4
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v1
.end method

.method protected c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->g()V

    const-string v0, "clear"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->i()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "set"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "get"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    sget-object p1, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "get"

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 248
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 274
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->g()V

    const-string p1, "text/plain"

    return-object p1
.end method

.method protected h()Landroid/content/SharedPreferences;
    .locals 3

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "diagmon_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected i()Landroid/os/Bundle;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 294
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 3

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    .line 148
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "diagmonSupportV1VersionName"

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "diagmonSupportV1VersionCode"

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->g()V

    .line 254
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 255
    sget-object p2, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    const-string v0, "logList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    const-string v0, "plainLogList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 257
    sget-object p2, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    const-string v0, "logList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->b:Landroid/os/Bundle;

    const-string v0, "plainLogList"

    .line 258
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1

    .line 259
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->a(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 256
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Data is corrupted"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 303
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 312
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
