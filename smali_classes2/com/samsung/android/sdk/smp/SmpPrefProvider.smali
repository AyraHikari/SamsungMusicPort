.class public Lcom/samsung/android/sdk/smp/SmpPrefProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SmpPrefProvider"

.field private static final b:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->b:Landroid/content/UriMatcher;

    .line 38
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.smp.pref.provider"

    const-string v2, "string/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.smp.pref.provider"

    const-string v2, "boolean/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.smp.pref.provider"

    const-string v2, "boolean/*/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.smp.pref.provider"

    const-string v2, "integer/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.smp.pref.provider"

    const-string v2, "long/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Landroid/database/MatrixCursor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object p2

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;)V

    return p3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object p2

    .line 67
    sget-object p3, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x1

    const/4 p5, 0x0

    packed-switch p3, :pswitch_data_0

    .line 82
    sget-object p2, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not supported uri : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p5

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-wide/32 p3, -0x5f5e0ff

    invoke-virtual {p2, p1, p3, p4}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    :cond_0
    invoke-direct {p0, p5}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->a(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const p3, -0x5f5e0ff

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    :cond_1
    invoke-direct {p0, p5}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->a(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p3, "true"

    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p5

    const/4 v0, 0x2

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->a(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1, p5}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->a(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    move-result-object p3

    const-string p4, "key"

    .line 105
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 106
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "value"

    .line 120
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 121
    invoke-virtual {p3, p4, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;J)V

    return v1

    :pswitch_1
    const-string p1, "value"

    .line 116
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 117
    invoke-virtual {p3, p4, p1}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;I)V

    return v1

    :pswitch_2
    const-string p1, "value"

    .line 112
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 113
    invoke-virtual {p3, p4, p1}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;Z)V

    return v1

    :pswitch_3
    const-string p1, "value"

    .line 108
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p3, p4, p1}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 125
    :cond_0
    :goto_0
    sget-object p2, Lcom/samsung/android/sdk/smp/SmpPrefProvider;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not supported uri : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
