.class public final enum Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/transition/SlideGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlideState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

.field public static final enum COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

.field public static final enum DRAGGING:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

.field public static final enum DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

.field public static final enum EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    const-string v1, "DRAGGING_PREPARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    const-string v1, "DRAGGING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    const-string v1, "COLLAPSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    const-string v1, "EXPANDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->$VALUES:[Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;
    .locals 1

    .line 33
    const-class v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->$VALUES:[Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    return-object v0
.end method
