.class public Lcom/samsung/android/sdk/ppmt/content/NotificationCard;
.super Lcom/samsung/android/sdk/ppmt/content/Card;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "NotificationCard"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/ppmt/content/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->q:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->r:Ljava/util/ArrayList;

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "notification"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 113
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i(Landroid/content/Context;)Z
    .locals 8

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    const-string v0, "notification"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 119
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getImportance()I

    move-result v3

    if-nez v3, :cond_0

    return v2

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    iget v3, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->d:I

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(I)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    :try_start_0
    const-string v0, "appops"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "android.app.AppOpsManager"

    .line 139
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    .line 141
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "checkOp"

    .line 142
    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 143
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v7

    .line 144
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :catch_0
    return v1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->h:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->m:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->n:Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->o:Ljava/lang/String;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->p:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public G()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public H()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->i:I

    return v0
.end method

.method public I()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->j:I

    return v0
.end method

.method public J()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->k:I

    return v0
.end method

.method public K()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->l:I

    return v0
.end method

.method public L()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;)V"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public a()Z
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->b:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->b:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 64
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    return v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->g(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 79
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->d:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] cannot show noti : channel is not created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->f:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->g:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->b:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->h:Ljava/lang/String;

    return-void
.end method

.method public f(Landroid/content/Context;)Z
    .locals 5

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->g(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 93
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->d:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] cannot show noti : channel is not created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v1

    .line 101
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] cannot show noti : disabled \'show notification\' option"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DISABLE_NOTI_OPTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v1

    .line 107
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->f(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public g(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->c:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->m:Ljava/lang/String;

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->d:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->n:Ljava/lang/String;

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->i:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->o:Ljava/lang/String;

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->j:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->p:Ljava/lang/String;

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->k:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->l:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t()Landroid/os/Bundle;
    .locals 5

    .line 298
    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->t()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ticker"

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f_type"

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->u()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "e_type"

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->v()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "content_title"

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_text"

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sub_content_text"

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_icon"

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "small_icon"

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "large_icon"

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "big_picture"

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "banner"

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "noti_channel"

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->w()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->F()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "f_flip_path"

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->F()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "f_flip_period"

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->H()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "f_flip_anim"

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->J()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->G()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "e_flip_path"

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->G()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "e_flip_period"

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->I()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "e_flip_anim"

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->K()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->L()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->L()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->L()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click_action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->b:I

    return v0
.end method

.method public v()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->c:I

    return v0
.end method

.method public w()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->d:I

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->e:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->f:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->g:Ljava/lang/String;

    return-object v0
.end method
