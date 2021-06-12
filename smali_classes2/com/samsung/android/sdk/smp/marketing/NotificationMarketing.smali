.class Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;
.super Lcom/samsung/android/sdk/smp/marketing/Marketing;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "NotificationMarketing"


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
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->q:Ljava/util/ArrayList;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->r:Ljava/util/ArrayList;

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "notification"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    .line 93
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
    .locals 3

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->g(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 80
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->d:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot show notification : channel not created"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method A()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->i:I

    return v0
.end method

.method B()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->j:I

    return v0
.end method

.method C()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->k:I

    return v0
.end method

.method D()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->l:I

    return v0
.end method

.method E()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->b:I

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->c:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->p()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot show notification : disabled notification option"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->DISABLE_NOTI_OPTION:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v1

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->e:Ljava/lang/String;

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->f:Ljava/lang/String;

    return-void
.end method

.method e(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->b:I

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->g:Ljava/lang/String;

    return-void
.end method

.method f(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->c:I

    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->h:Ljava/lang/String;

    return-void
.end method

.method g(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->d:I

    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->m:Ljava/lang/String;

    return-void
.end method

.method h(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->i:I

    return-void
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->n:Ljava/lang/String;

    return-void
.end method

.method i(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->j:I

    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->o:Ljava/lang/String;

    return-void
.end method

.method j(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->k:I

    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->p:Ljava/lang/String;

    return-void
.end method

.method k(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->l:I

    return-void
.end method

.method k(Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m()Landroid/os/Bundle;
    .locals 7

    .line 242
    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ticker"

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f_type"

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "e_type"

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "content_title"

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_text"

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sub_content_text"

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "small_icon"

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "large_icon"

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "big_picture"

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "banner"

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "noti_channel"

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->y()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "f_flip_path"

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->y()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "f_flip_period"

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "f_flip_anim"

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->C()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->z()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "e_flip_path"

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->z()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "e_flip_period"

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->B()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "e_flip_anim"

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->D()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->E()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->E()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->E()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click_link"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 271
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "link_uris"

    .line 275
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method n()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->b:I

    return v0
.end method

.method o()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->c:I

    return v0
.end method

.method p()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->d:I

    return v0
.end method

.method q()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->e:Ljava/lang/String;

    return-object v0
.end method

.method r()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->f:Ljava/lang/String;

    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->g:Ljava/lang/String;

    return-object v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->h:Ljava/lang/String;

    return-object v0
.end method

.method u()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->m:Ljava/lang/String;

    return-object v0
.end method

.method v()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->n:Ljava/lang/String;

    return-object v0
.end method

.method w()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->o:Ljava/lang/String;

    return-object v0
.end method

.method x()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->p:Ljava/lang/String;

    return-object v0
.end method

.method y()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method z()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->r:Ljava/util/ArrayList;

    return-object v0
.end method
