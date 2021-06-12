.class public Lcom/dawin/DawinVideoAd;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/DawinVideoAd$DawinVideoAdListener;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/widget/MediaController;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Z

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Ljava/util/Timer;

.field private R:Ljava/util/TimerTask;

.field private S:Z

.field private T:I

.field private U:I

.field private V:Landroid/os/Handler;

.field private W:Landroid/os/Handler;

.field a:Lcom/dawin/http/a$a;

.field private aa:Landroid/telephony/PhoneStateListener;

.field private ab:Landroid/telephony/PhoneStateListener;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/dawin/util/h;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcom/dawin/a/a;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/dawin/objects/b;

.field private p:Lcom/dawin/objects/b;

.field private q:Lcom/dawin/objects/b;

.field private r:Lcom/dawin/objects/b;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dawin/objects/b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

.field private u:Lcom/dawin/http/a;

.field private v:Landroid/widget/ProgressBar;

.field private w:Lcom/dawin/objects/AdInfos;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/dawin/DawinVideoAd;->c:I

    const-string v1, ""

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/dawin/DawinVideoAd;->A:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->C:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->D:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->E:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->F:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->G:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->H:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->I:Z

    iput v1, p0, Lcom/dawin/DawinVideoAd;->J:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->K:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->L:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/dawin/DawinVideoAd;->M:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->N:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->O:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->P:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iput v0, p0, Lcom/dawin/DawinVideoAd;->T:I

    iput v1, p0, Lcom/dawin/DawinVideoAd;->U:I

    new-instance v0, Lcom/dawin/DawinVideoAd$1;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$1;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/DawinVideoAd$8;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$8;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/DawinVideoAd$9;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$9;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->aa:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/dawin/DawinVideoAd$10;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$10;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->ab:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/dawin/DawinVideoAd$13;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$13;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->a:Lcom/dawin/http/a$a;

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->b()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/dawin/DawinVideoAd;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dawin/DawinVideoAd;->A:I

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->C:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->D:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->E:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->F:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->G:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->H:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->I:Z

    iput v0, p0, Lcom/dawin/DawinVideoAd;->J:I

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->K:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->L:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/dawin/DawinVideoAd;->M:I

    iput v1, p0, Lcom/dawin/DawinVideoAd;->N:I

    iput v1, p0, Lcom/dawin/DawinVideoAd;->O:I

    iput v1, p0, Lcom/dawin/DawinVideoAd;->P:I

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iput p2, p0, Lcom/dawin/DawinVideoAd;->T:I

    iput v0, p0, Lcom/dawin/DawinVideoAd;->U:I

    new-instance p2, Lcom/dawin/DawinVideoAd$1;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$1;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    new-instance p2, Lcom/dawin/DawinVideoAd$8;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$8;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    new-instance p2, Lcom/dawin/DawinVideoAd$9;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$9;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->aa:Landroid/telephony/PhoneStateListener;

    new-instance p2, Lcom/dawin/DawinVideoAd$10;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$10;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->ab:Landroid/telephony/PhoneStateListener;

    new-instance p2, Lcom/dawin/DawinVideoAd$13;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$13;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->a:Lcom/dawin/http/a$a;

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->b()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/16 p3, 0x2710

    iput p3, p0, Lcom/dawin/DawinVideoAd;->c:I

    const-string p3, ""

    iput-object p3, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const/4 p3, 0x0

    iput p3, p0, Lcom/dawin/DawinVideoAd;->A:I

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->C:Z

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->D:Z

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->E:Z

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->F:Z

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->G:Z

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->H:Z

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->I:Z

    iput p3, p0, Lcom/dawin/DawinVideoAd;->J:I

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->K:Z

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->L:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/dawin/DawinVideoAd;->M:I

    iput v0, p0, Lcom/dawin/DawinVideoAd;->N:I

    iput v0, p0, Lcom/dawin/DawinVideoAd;->O:I

    iput v0, p0, Lcom/dawin/DawinVideoAd;->P:I

    iput-boolean p3, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iput p2, p0, Lcom/dawin/DawinVideoAd;->T:I

    iput p3, p0, Lcom/dawin/DawinVideoAd;->U:I

    new-instance p2, Lcom/dawin/DawinVideoAd$1;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$1;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    new-instance p2, Lcom/dawin/DawinVideoAd$8;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$8;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    new-instance p2, Lcom/dawin/DawinVideoAd$9;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$9;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->aa:Landroid/telephony/PhoneStateListener;

    new-instance p2, Lcom/dawin/DawinVideoAd$10;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$10;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->ab:Landroid/telephony/PhoneStateListener;

    new-instance p2, Lcom/dawin/DawinVideoAd$13;

    invoke-direct {p2, p0}, Lcom/dawin/DawinVideoAd$13;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->a:Lcom/dawin/http/a$a;

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->b()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->d()V

    return-void
.end method

.method static synthetic A(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->y:I

    return p0
.end method

.method static synthetic B(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->z:I

    return p0
.end method

.method static synthetic C(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic D(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic E(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->e()V

    return-void
.end method

.method static synthetic F(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->e:I

    return p0
.end method

.method static synthetic G(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->M:I

    return p0
.end method

.method static synthetic H(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->N:I

    return p0
.end method

.method static synthetic I(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->O:I

    return p0
.end method

.method static synthetic J(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->P:I

    return p0
.end method

.method static synthetic K(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->getActionButtonParameter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic L(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->T:I

    return p1
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Lcom/dawin/objects/AdInfos;)Lcom/dawin/objects/AdInfos;
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    return-object p1
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/util/CommonUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->ab:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->aa:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/dawin/DawinVideoAd;->T:I

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 14

    :try_start_0
    check-cast p1, Lcom/dawin/objects/b;

    iget-object v0, p1, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v0, v0, Lcom/dawin/objects/c;->c:I

    const/16 v1, 0x7530

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getSkipTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    const/16 v0, 0x5dc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getSkipTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdSkiped(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v0, v0, Lcom/dawin/objects/c;->c:I

    const/16 v1, 0x4e20

    if-ne v0, v1, :cond_3

    const-string v0, "Brand"

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_3
    const-string v0, "Action"

    goto :goto_1

    :goto_2
    const-string v0, ""

    const-string v2, ""

    const-string v3, ""

    iget-object v5, p1, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v5, v5, Lcom/dawin/objects/c;->c:I

    if-ne v5, v1, :cond_4

    iget-object v0, p1, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v0, v0, Lcom/dawin/objects/c;->t:Ljava/lang/String;

    iget-object v1, p1, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->u:Ljava/lang/String;

    iget-object p1, p1, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget-object p1, p1, Lcom/dawin/objects/c;->s:Ljava/lang/String;

    move-object v6, p1

    move-object v5, v1

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getVideoclickThrough()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getVideoClickTracking()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_3

    :cond_5
    move-object v5, v2

    :goto_3
    move-object v6, v3

    :goto_4
    if-eqz v0, :cond_c

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const-string p1, "tel:"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iget p1, p0, Lcom/dawin/DawinVideoAd;->T:I

    const/16 v0, 0x11

    const v1, 0x102000b

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/dawin/DawinVideoAd;->onPause()V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const/4 v8, 0x0

    const-string v10, "\ucde8\uc18c"

    const-string v11, "\ud1b5\ud654"

    new-instance v12, Lcom/dawin/DawinVideoAd$15;

    invoke-direct {v12, p0}, Lcom/dawin/DawinVideoAd$15;-><init>(Lcom/dawin/DawinVideoAd;)V

    new-instance v13, Lcom/dawin/DawinVideoAd$2;

    move-object v2, v13

    move-object v3, p0

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/dawin/DawinVideoAd$2;-><init>(Lcom/dawin/DawinVideoAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, p1

    invoke-static/range {v7 .. v13}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v2, Lcom/dawin/DawinVideoAd$3;

    invoke-direct {v2, p0}, Lcom/dawin/DawinVideoAd$3;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_5
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_7
    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "\uc804\ud654 \uae30\ub2a5\uc744 \uc774\uc6a9\ud560 \uc218 \uc5c6\ub294 \uc0c1\ud0dc\uc785\ub2c8\ub2e4."

    const-string v5, "\ud655\uc778"

    const/4 v6, 0x0

    new-instance v7, Lcom/dawin/DawinVideoAd$4;

    invoke-direct {v7, p0}, Lcom/dawin/DawinVideoAd$4;-><init>(Lcom/dawin/DawinVideoAd;)V

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_5

    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {p1, v4, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 p1, 0x7d0

    if-eqz v5, :cond_a

    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->getActionButtonParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&pt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&dawin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "A01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_a
    if-eqz v6, :cond_b

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&pt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&dawin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "A01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_b
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    :goto_7
    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dawin/DawinVideoAd;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Ljava/util/ArrayList;Lcom/dawin/objects/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dawin/DawinVideoAd;->a(Ljava/util/ArrayList;Lcom/dawin/objects/a;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/dawin/objects/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dawin/objects/c;",
            ">;",
            "Lcom/dawin/objects/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/objects/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extension Button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/dawin/objects/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/dawin/objects/c;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/dawin/objects/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget v2, v1, Lcom/dawin/objects/c;->c:I

    const/16 v3, 0x4e20

    const/16 v4, 0x8

    if-eq v2, v3, :cond_3

    const/16 v5, 0x7530

    if-eq v2, v5, :cond_2

    const v5, 0x9c40

    if-eq v2, v5, :cond_1

    const v5, 0xc350

    if-eq v2, v5, :cond_0

    const v5, 0x1869f

    if-eq v2, v5, :cond_3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance v2, Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/dawin/objects/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/c;Lcom/dawin/objects/a;I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    new-instance v2, Lcom/dawin/DawinVideoAd$6;

    invoke-direct {v2, p0}, Lcom/dawin/DawinVideoAd$6;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v1, v2}, Lcom/dawin/objects/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    :goto_1
    invoke-virtual {v1, v4}, Lcom/dawin/objects/b;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    new-instance v2, Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/dawin/objects/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/c;Lcom/dawin/objects/a;I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/dawin/objects/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/c;Lcom/dawin/objects/a;I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/dawin/objects/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/c;Lcom/dawin/objects/a;I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    new-instance v2, Lcom/dawin/DawinVideoAd$5;

    invoke-direct {v2, p0}, Lcom/dawin/DawinVideoAd$5;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v1, v2}, Lcom/dawin/objects/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    goto/16 :goto_1

    :cond_3
    new-instance v2, Lcom/dawin/objects/b;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/dawin/objects/b;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v5}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v1, p2, v5}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/c;Lcom/dawin/objects/a;I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v1, Lcom/dawin/objects/c;->c:I

    if-ne v1, v3, :cond_4

    new-instance v1, Lcom/dawin/DawinVideoAd$7;

    invoke-direct {v1, p0}, Lcom/dawin/DawinVideoAd$7;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v2, v1}, Lcom/dawin/objects/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Lcom/dawin/objects/b;->setVisibility(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    invoke-virtual {v0, p1}, Lcom/dawin/objects/b;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    invoke-virtual {v0, p1}, Lcom/dawin/objects/b;->setClickable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/objects/b;

    iget-object v1, v1, Lcom/dawin/objects/b;->a:Lcom/dawin/objects/c;

    iget v1, v1, Lcom/dawin/objects/c;->c:I

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/objects/b;

    invoke-virtual {v1, p1}, Lcom/dawin/objects/b;->setClickable(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->I:Z

    return p1
.end method

.method static synthetic b(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->U:I

    return p1
.end method

.method static synthetic b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    return-object p0
.end method

.method private b()V
    .locals 2

    const-string v0, "DawinSDK"

    const-string v1, "Dawin 3.0 SDK Ver : 1.0.9 | Date : 20190628"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dawin/DawinVideoAd;->setWillNotDraw(Z)V

    new-instance v0, Lcom/dawin/util/h;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dawin/util/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/h;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/util/CommonUtils;->f(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->a()V

    new-instance v0, Lcom/dawin/http/a;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dawin/http/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->a:Lcom/dawin/http/a$a;

    invoke-virtual {v0, v1}, Lcom/dawin/http/a;->a(Lcom/dawin/http/a$a;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lcom/dawin/DawinVideoAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->E:Z

    return p1
.end method

.method static synthetic c(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->A:I

    return p1
.end method

.method static synthetic c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 10

    const-string v0, "setVideoLayoutParam()"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->getVideoSize()Lcom/dawin/util/CommonUtils$ScreenSize;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoLayoutParam() - size.getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / size.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v1

    if-lez v1, :cond_10

    iget v1, p0, Lcom/dawin/DawinVideoAd;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/dawin/DawinVideoAd;->O:I

    iget v2, p0, Lcom/dawin/DawinVideoAd;->P:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/dawin/DawinVideoAd;->M:I

    iget v2, p0, Lcom/dawin/DawinVideoAd;->N:I

    :goto_0
    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    const-string v1, "parent width same as video width. hide left, right view."

    :goto_1
    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v3, v6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parent width : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video width : "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", left margin : "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right margin : "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v1

    if-ne v2, v1, :cond_a

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_9
    const-string v1, "parent height same as video height. hide top, bottom view."

    :goto_3
    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v1

    sub-int v1, v2, v1

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v1, v3

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_d
    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", video Height : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top margin : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom margin : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const-string v2, "####################################################################################"

    invoke-static {v2}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BEFORE  Bottom layout width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET Bottom layout width : -1, height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const-string v1, "####################################################################################"

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BEFORE video layout width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AFTER  video layout width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const-string v1, "####################################################################################"

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    return-void
.end method

.method static synthetic c(Lcom/dawin/DawinVideoAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->D:Z

    return p1
.end method

.method static synthetic d(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->b:I

    return p1
.end method

.method private d()V
    .locals 12

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x0

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-nez v3, :cond_0

    new-instance v3, Lcom/dawin/a/a;

    iget-object v8, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/dawin/a/a;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    :cond_0
    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    new-instance v8, Lcom/dawin/DawinVideoAd$11;

    invoke-direct {v8, p0}, Lcom/dawin/DawinVideoAd$11;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v3, v8}, Lcom/dawin/a/a;->setOnVideoPlayerListener(Lcom/dawin/a/a$b;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v8, v10, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v8, 0x3e8

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v8, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const/4 v10, 0x0

    const v11, 0x1010077

    invoke-direct {v3, v8, v10, v11}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/dawin/util/CommonUtils;->b(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x50

    div-int/lit16 v3, v3, 0x140

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v2}, Lcom/dawin/DawinVideoAd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic d(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    return-void
.end method

.method static synthetic d(Lcom/dawin/DawinVideoAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->C:Z

    return p1
.end method

.method static synthetic e(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->e:I

    return p1
.end method

.method static synthetic e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    return-object p0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->R:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/dawin/DawinVideoAd$12;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$12;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->R:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/dawin/DawinVideoAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->H:Z

    return p1
.end method

.method static synthetic f(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->J:I

    return p1
.end method

.method static synthetic f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    return-object p0
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->R:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->R:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->R:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/dawin/DawinVideoAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->G:Z

    return p1
.end method

.method static synthetic g(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->x:I

    return p1
.end method

.method static synthetic g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    return-object p0
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->R:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->Q:Ljava/util/Timer;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->R:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private getActionButtonParameter()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&lq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dawin/DawinVideoAd;->A:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->G:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic h(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->y:I

    return p1
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/h;

    invoke-virtual {v0}, Lcom/dawin/util/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/util/CommonUtils;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/h;

    invoke-virtual {v0}, Lcom/dawin/util/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    const/16 v1, 0x6a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/h;

    invoke-virtual {v3}, Lcom/dawin/util/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&dawin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "A01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v1, "\uc778\ud130\ub137 \uc5f0\uacb0 \ud37c\ubbf8\uc158 \uc624\ub958"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic h(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->m()V

    return-void
.end method

.method static synthetic i(Lcom/dawin/DawinVideoAd;I)I
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->z:I

    return p1
.end method

.method private i()V
    .locals 4

    const-string v0, "prepareVideo"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/dawin/DawinVideoAd;->setVisibility(I)V

    new-instance v1, Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1, v0}, Lcom/dawin/a/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v1, "\uae30\ud0c0 \uc624\ub958"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->w:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dawin/a/a;->setVideoURI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->requestFocus()Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    iget v2, p0, Lcom/dawin/DawinVideoAd;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    new-instance v1, Lcom/dawin/DawinVideoAd$14;

    invoke-direct {v1, p0}, Lcom/dawin/DawinVideoAd$14;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/dawin/a/a;->setOnPreparedListener(Lcom/dawin/a/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v1, "\uae30\ud0c0 \uc624\ub958"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v1, "\uae30\ud0c0 \uc624\ub958"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    return-void
.end method

.method static synthetic i(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->j()V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->a(Z)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->h()V

    return-void
.end method

.method static synthetic k(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->U:I

    return p0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->a(Z)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    return-object p0
.end method

.method private l()V
    .locals 2

    const-string v0, "InitializeVideoView!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->a(Z)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->f()V

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->F:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->K:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->L:Z

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->b()V

    :cond_0
    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->E:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->C:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->D:Z

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->I:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    return-void
.end method

.method private m()V
    .locals 3

    const-string v0, "-------- Reset views state"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0, v1}, Lcom/dawin/a/a;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    invoke-virtual {p0, v0}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    invoke-virtual {p0, v0}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    :cond_3
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    invoke-virtual {p0, v0}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    :cond_4
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    invoke-virtual {p0, v0}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    :cond_5
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dawin/objects/b;

    invoke-virtual {v2, v1}, Lcom/dawin/objects/b;->setVisibility(I)V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dawin/DawinVideoAd;->setVisibility(I)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->k()V

    invoke-virtual {p0}, Lcom/dawin/DawinVideoAd;->invalidate()V

    return-void
.end method

.method static synthetic m(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->g()V

    return-void
.end method

.method static synthetic n(Lcom/dawin/DawinVideoAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/dawin/DawinVideoAd;->D:Z

    return p0
.end method

.method static synthetic o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    return-object p0
.end method

.method static synthetic p(Lcom/dawin/DawinVideoAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/dawin/DawinVideoAd;->C:Z

    return p0
.end method

.method static synthetic q(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->k()V

    return-void
.end method

.method static synthetic r(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    return-object p0
.end method

.method static synthetic s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    return-object p0
.end method

.method static synthetic t(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->c()V

    return-void
.end method

.method static synthetic u(Lcom/dawin/DawinVideoAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/dawin/DawinVideoAd;->H:Z

    return p0
.end method

.method static synthetic v(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->J:I

    return p0
.end method

.method static synthetic w(Lcom/dawin/DawinVideoAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/dawin/DawinVideoAd;->I:Z

    return p0
.end method

.method static synthetic x(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic y(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->A:I

    return p0
.end method

.method static synthetic z(Lcom/dawin/DawinVideoAd;)I
    .locals 0

    iget p0, p0, Lcom/dawin/DawinVideoAd;->x:I

    return p0
.end method


# virtual methods
.method public initAd(Ljava/lang/String;Lcom/dawin/DawinVideoAd$DawinVideoAdListener;)V
    .locals 8

    iget v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string p2, "JSON \ud30c\uc2f1 \uc624\ub958"

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    const-string p1, "adslotid"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "userdata"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "category"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "age"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "gender"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "videotimeout"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "videotimeout"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/dawin/DawinVideoAd;->c:I

    goto :goto_1

    :cond_3
    const/16 p1, 0x2710

    goto :goto_0

    :goto_1
    const-string p1, "resumetoplay"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    const-string p1, "resumetoplay"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->K:Z

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->K:Z

    :goto_2
    const-string p1, "skipdisplaystop"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "skipdisplaystop"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->L:Z

    goto :goto_3

    :cond_5
    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->L:Z

    :goto_3
    const-string p1, "requesttimeout"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "videotimeout"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/dawin/http/c;->a(I)V

    :cond_6
    const-string p1, "protocol"

    invoke-direct {p0, p2, p1}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "host"

    invoke-direct {p0, p2, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "path"

    invoke-direct {p0, p2, v2}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_8

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/h;

    invoke-virtual {v2, p1, v0, p2}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/h;

    invoke-virtual/range {v2 .. v7}, Lcom/dawin/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/dawin/DawinVideoAd;->b:I

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->h()V

    return-void

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string p2, "adslotid \uc624\ub958"

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string p2, "JSON \ud30c\uc2f1 \uc624\ub958"

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    return-void

    :cond_b
    :goto_5
    const-string p1, "DawinVideoAd Loading..."

    invoke-static {p1}, Lcom/dawin/util/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public isDawinAdPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->E:Z

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/h;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->f()V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->e()V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->h()V

    :cond_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->E:Z

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->a()V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    invoke-virtual {v1}, Lcom/dawin/http/a;->a()V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Lcom/dawin/http/a;

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/dawin/DawinVideoAd;->E:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->o:Lcom/dawin/objects/b;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dawin/objects/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->p:Lcom/dawin/objects/b;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dawin/objects/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->r:Lcom/dawin/objects/b;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dawin/objects/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->q:Lcom/dawin/objects/b;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dawin/objects/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dawin/objects/b;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/objects/b;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/dawin/objects/b;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->F:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dawin/DawinVideoAd;->a(Z)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->V:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->f()V

    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->E:Z

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->h()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dawin/a/a;->setOnPreparedListener(Lcom/dawin/a/a$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "onResume DawinVideoAd"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->F:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsOnPauseCalled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/dawin/DawinVideoAd;->K:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/dawin/DawinVideoAd;->L:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/dawin/DawinVideoAd;->E:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/dawin/DawinVideoAd;->I:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->E:Z

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->K:Z

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->L:Z

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/dawin/DawinVideoAd;->I:Z

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->f()V

    :cond_3
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->e()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->g()V

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->F:Z

    invoke-direct {p0, v1}, Lcom/dawin/DawinVideoAd;->a(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    :cond_6
    :goto_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const-string v0, "====================on size changed============================="

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    const/16 v0, 0xa00

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3c0

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const-string p1, "onSizeChanged height fail"

    invoke-static {p1}, Lcom/dawin/util/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldw : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldh : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz p4, :cond_3

    if-eq p3, p1, :cond_3

    iget-object p3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;)I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, -0x1

    if-ne p3, p4, :cond_1

    iput p4, p0, Lcom/dawin/DawinVideoAd;->e:I

    iget-object p3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget p4, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {p3, p4}, Lcom/dawin/a/a;->setCurrentOrientation(I)V

    iget p3, p0, Lcom/dawin/DawinVideoAd;->M:I

    if-ne p3, v0, :cond_2

    iget p3, p0, Lcom/dawin/DawinVideoAd;->N:I

    if-ne p3, v0, :cond_2

    iput p1, p0, Lcom/dawin/DawinVideoAd;->M:I

    iput p2, p0, Lcom/dawin/DawinVideoAd;->N:I

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    iput p3, p0, Lcom/dawin/DawinVideoAd;->e:I

    iget-object p3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget p4, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {p3, p4}, Lcom/dawin/a/a;->setCurrentOrientation(I)V

    iget p3, p0, Lcom/dawin/DawinVideoAd;->O:I

    if-ne p3, v0, :cond_2

    iget p3, p0, Lcom/dawin/DawinVideoAd;->P:I

    if-ne p3, v0, :cond_2

    iput p1, p0, Lcom/dawin/DawinVideoAd;->O:I

    iput p2, p0, Lcom/dawin/DawinVideoAd;->P:I

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget p4, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {p3, p4, p1, p2}, Lcom/dawin/a/a;->a(III)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->c()V

    goto :goto_1

    :cond_3
    const-string p1, "Wrong case!!! old width can not same as current width."

    invoke-static {p1}, Lcom/dawin/util/e;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0, p1}, Lcom/dawin/a/a;->setMediaVolume(F)V

    :cond_0
    return-void
.end method

.method public startAd()V
    .locals 4

    iget v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dawin/a/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->W:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->i()V

    :cond_1
    return-void
.end method

.method public stopAd()V
    .locals 2

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dawin/a/a;->setOnPreparedListener(Lcom/dawin/a/a$a;)V

    :cond_0
    return-void
.end method
