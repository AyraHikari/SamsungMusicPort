.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;
.source "SourceFile"


# static fields
.field private static sAccessibilityId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mAccessibilityId:I

.field public mContentDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;->sAccessibilityId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;-><init>()V

    .line 13
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;->sAccessibilityId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;->mAccessibilityId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic cancelAnimation()V
    .locals 0

    .line 10
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->cancelAnimation()V

    return-void
.end method

.method public bridge synthetic getUser()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->getUser()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isAnimationStarted()Z
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->isAnimationStarted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->setAnimation(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public bridge synthetic setUser(Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->setUser(Ljava/lang/Object;)V

    return-void
.end method
