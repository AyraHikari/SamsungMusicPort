.class public final enum Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

.field public static final enum GoAndBack:Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

.field public static final enum OneWay:Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    const-string v1, "OneWay"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;->OneWay:Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    new-instance v0, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    const-string v1, "GoAndBack"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;->GoAndBack:Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    sget-object v1, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;->OneWay:Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;->GoAndBack:Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;->$VALUES:[Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;
    .locals 1

    .line 8
    const-class v0, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;
    .locals 1

    .line 8
    sget-object v0, Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;->$VALUES:[Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    invoke-virtual {v0}, [Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/td/math_lib/math/ValueAnimationHelperBase$PlayMode;

    return-object v0
.end method
