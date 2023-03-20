.class public Lcom/samsung/android/sdk/cover/ScoverState;
.super Ljava/lang/Object;
.source "ScoverState.java"


# static fields
.field public static final COLOR_BLACK:I = 0x1

.field public static final COLOR_BLUE:I = 0x5

.field public static final COLOR_BLUSH_PINK:I = 0x8

.field public static final COLOR_CARBON_METAL:I = 0x6

.field public static final COLOR_CHARCOAL:I = 0xa

.field public static final COLOR_CHARCOAL_GRAY:I = 0xa

.field public static final COLOR_CLASSIC_WHITE:I = 0x2

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_GOLD:I = 0x7

.field public static final COLOR_GRAYISH_BLUE:I = 0x9

.field public static final COLOR_GREEN:I = 0xb

.field public static final COLOR_INDIGO_BLUE:I = 0x5

.field public static final COLOR_JET_BLACK:I = 0x1

.field public static final COLOR_MAGENTA:I = 0x3

.field public static final COLOR_MINT:I = 0x9

.field public static final COLOR_MINT_BLUE:I = 0x9

.field public static final COLOR_MUSTARD_YELLOW:I = 0xc

.field public static final COLOR_NAVY:I = 0x4

.field public static final COLOR_OATMEAL:I = 0xc

.field public static final COLOR_OATMEAL_BEIGE:I = 0xc

.field public static final COLOR_ORANGE:I = 0xd

.field public static final COLOR_PEAKCOCK_GREEN:I = 0xb

.field public static final COLOR_PEARL_WHITE:I = 0x2

.field public static final COLOR_PINK:I = 0x8

.field public static final COLOR_PLUM:I = 0x3

.field public static final COLOR_PLUM_RED:I = 0x3

.field public static final COLOR_ROSE_GOLD:I = 0x7

.field public static final COLOR_SILVER:I = 0x6

.field public static final COLOR_SOFT_PINK:I = 0x8

.field public static final COLOR_WHITE:I = 0x2

.field public static final COLOR_WILD_ORANGE:I = 0xd

.field public static final COLOR_YELLOW:I = 0xc

.field public static final COVER_ATTACHED:Z = true

.field public static final COVER_DETACHED:Z = false

.field public static final MODEL_DEFAULT:I = 0x0

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "ScoverState"

.field public static final TYPE_BRAND_MONBLANC_COVER:I = 0x64

.field public static final TYPE_CLEAR_COVER:I = 0x8

.field public static final TYPE_FLIP_COVER:I = 0x0

.field public static final TYPE_HEALTH_COVER:I = 0x4

.field public static final TYPE_LED_COVER:I = 0x7

.field public static final TYPE_NFC_SMART_COVER:I = 0xff

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final TYPE_SVIEW_COVER:I = 0x1

.field public static final TYPE_S_CHARGER_COVER:I = 0x5

.field public static final TYPE_S_VIEW_WALLET_COVER:I = 0x6


# instance fields
.field public attached:Z

.field public color:I

.field private heightPixel:I

.field public model:I

.field private switchState:Z

.field public type:I

.field private widthPixel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 5
    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 6
    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 8
    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 11
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 12
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 13
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 14
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 16
    iput p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 19
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 20
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 21
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 22
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 23
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 27
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 28
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 29
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 30
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 31
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 32
    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    return-void
.end method


# virtual methods
.method public getAttachState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    return v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    return v0
.end method

.method public getSwitchState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
