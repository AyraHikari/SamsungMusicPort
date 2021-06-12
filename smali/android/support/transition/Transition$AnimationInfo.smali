.class Landroid/support/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mTransition:Landroid/support/transition/Transition;

.field mValues:Landroid/support/transition/TransitionValues;

.field mView:Landroid/view/View;

.field mWindowId:Landroid/support/transition/WindowIdImpl;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/Transition;Landroid/support/transition/WindowIdImpl;Landroid/support/transition/TransitionValues;)V
    .locals 0

    .line 2359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2360
    iput-object p1, p0, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 2361
    iput-object p2, p0, Landroid/support/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 2362
    iput-object p5, p0, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    .line 2363
    iput-object p4, p0, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    .line 2364
    iput-object p3, p0, Landroid/support/transition/Transition$AnimationInfo;->mTransition:Landroid/support/transition/Transition;

    return-void
.end method
