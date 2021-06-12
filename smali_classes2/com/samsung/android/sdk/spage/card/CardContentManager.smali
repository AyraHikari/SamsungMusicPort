.class public final Lcom/samsung/android/sdk/spage/card/CardContentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;

.field private static final f:Landroid/net/Uri;

.field private static volatile g:Lcom/samsung/android/sdk/spage/card/CardContentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.android.app.spage.provider"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a:Landroid/net/Uri;

    .line 21
    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a:Landroid/net/Uri;

    const-string v1, "info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->b:Landroid/net/Uri;

    .line 22
    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a:Landroid/net/Uri;

    const-string v1, "card"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->c:Landroid/net/Uri;

    .line 23
    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a:Landroid/net/Uri;

    const-string v1, "instant"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->d:Landroid/net/Uri;

    .line 24
    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a:Landroid/net/Uri;

    const-string v1, "customize"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->e:Landroid/net/Uri;

    .line 25
    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a:Landroid/net/Uri;

    const-string v1, "change"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->f:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->g:Lcom/samsung/android/sdk/spage/card/CardContentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/sdk/spage/card/CardContentManager;
    .locals 2

    .line 39
    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->g:Lcom/samsung/android/sdk/spage/card/CardContentManager;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/spage/card/CardContentManager;->g:Lcom/samsung/android/sdk/spage/card/CardContentManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/samsung/android/sdk/spage/card/CardContentManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/spage/card/CardContentManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/spage/card/CardContentManager;->g:Lcom/samsung/android/sdk/spage/card/CardContentManager;

    .line 44
    :cond_0
    const-class v1, Lcom/samsung/android/sdk/spage/card/CardContentManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 45
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->g:Lcom/samsung/android/sdk/spage/card/CardContentManager;

    return-object v0
.end method

.method private a(Lcom/samsung/android/sdk/spage/card/CardContent;)V
    .locals 5

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/sdk/spage/card/CardContent;->a()Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "NO_CONTENTS"

    const-string v1, "extraState"

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "tag_data_"

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v4, "tag_data_4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :pswitch_1
    const-string v4, "tag_data_3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :pswitch_2
    const-string v4, "tag_data_2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_3
    const-string v4, "tag_data_1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    const-string v1, "tag_data_no_content_6"

    .line 189
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v1, "tag_data_no_content_5"

    .line 186
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v1, "tag_data_no_content_4"

    .line 183
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v1, "tag_data_no_content_3"

    .line 180
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x38feadf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "CardContentManager"

    const-string v0, "content provider is null"

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContent;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a(Lcom/samsung/android/sdk/spage/card/CardContent;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager;->c:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/spage/card/CardContent;->a()Landroid/content/ContentValues;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "card content is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
