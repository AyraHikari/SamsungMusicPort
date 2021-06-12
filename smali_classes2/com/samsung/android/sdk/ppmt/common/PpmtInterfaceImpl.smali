.class public Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PpmtInterfaceImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .line 100
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "spp"

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "gcm"

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "fcm"

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    return v1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPushToken. type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget-object p0, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "push token is too long : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string p1, "fcm"

    goto :goto_0

    :pswitch_0
    const-string p1, "gcm"

    goto :goto_0

    :pswitch_1
    const-string p1, "spp"

    .line 69
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->n()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 75
    :cond_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/PpmtID;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->v()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 91
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->c(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "spp"

    const-string v0, "appData"

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p2, "gcm"

    const-string v0, "ppmt"

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 231
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    sget-object p1, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a:Ljava/lang/String;

    const-string p2, "messageReceived on dereg state."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->x()Z

    move-result p1

    if-nez p1, :cond_0

    .line 234
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->h(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 239
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageReceived. type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_PUSH_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 242
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    const-string v1, "push_type"

    .line 243
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p2

    const-string v0, "appdata"

    .line 244
    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object p1

    .line 246
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fcm"

    const-string v1, "ppmt"

    .line 225
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 227
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    int-to-long v0, p0

    const-wide/16 v2, 0x400

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 190
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->v()Z

    move-result p0

    return p0
.end method
