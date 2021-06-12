.class public Lcom/samsung/android/app/music/provider/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PreferenceProvider"

.field private static final b:Landroid/content/UriMatcher;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/preferences/IPrefImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->b:Landroid/content/UriMatcher;

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.provider.preference"

    const-string v2, "boolean/*/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.provider.preference"

    const-string v2, "string/*/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.provider.preference"

    const-string v2, "integer/*/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.provider.preference"

    const-string v2, "long/*/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->c:Ljava/util/Map;

    const-string v0, "value"

    .line 144
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const-string v1, "key"

    .line 159
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 160
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->a(Ljava/lang/String;I)V

    return v0

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " values is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 147
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/samsung/android/app/music/provider/PreferenceProvider;->d:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 148
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;
    .locals 2

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/samsung/android/app/music/preferences/PrefImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/PrefImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    sget-object v1, Lcom/samsung/android/app/music/provider/PreferenceProvider;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/preferences/IPrefImpl;

    return-object p1

    .line 215
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Preference name is null!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/net/Uri;)Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
    .locals 3

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 248
    new-instance v1, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrefModelByUri uri is wrong : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport preftype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "content://com.sec.android.app.music.provider.preference/long/"

    return-object p0

    :pswitch_1
    const-string p0, "content://com.sec.android.app.music.provider.preference/integer/"

    return-object p0

    :pswitch_2
    const-string p0, "content://com.sec.android.app.music.provider.preference/string/"

    return-object p0

    :pswitch_3
    const-string p0, "content://com.sec.android.app.music.provider.preference/boolean/"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const-string v1, "key"

    .line 175
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 176
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->a(Ljava/lang/String;Z)V

    return v0

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " values is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    const-string v2, "key"

    .line 192
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    .line 193
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 199
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-interface {p1, v2, v0, v1}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->a(Ljava/lang/String;J)V

    return-wide v0

    .line 188
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " values is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "key"

    .line 207
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    .line 208
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " values is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Landroid/net/Uri;)Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Landroid/net/Uri;)Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;

    move-result-object p2

    .line 70
    sget-object p3, Lcom/samsung/android/app/music/provider/PreferenceProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 91
    :pswitch_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p2

    const-wide/16 p3, -0x1

    invoke-interface {p1, p2, p3, p4}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->b(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object p1

    goto/16 :goto_1

    .line 85
    :pswitch_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x1

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->b(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object p1

    goto :goto_1

    .line 79
    :pswitch_2
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object p1

    goto :goto_1

    .line 72
    :pswitch_3
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/preferences/IPrefImpl;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/music/preferences/IPrefImpl;->b(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Landroid/net/Uri;)Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 125
    sget-object p4, Lcom/samsung/android/app/music/provider/PreferenceProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    packed-switch p4, :pswitch_data_0

    .line 139
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update unsupported uri : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 130
    :pswitch_0
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0

    .line 127
    :pswitch_3
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "update prefModel is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
