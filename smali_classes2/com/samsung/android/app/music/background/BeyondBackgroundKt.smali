.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v0, Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static final synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt;->a:Landroid/view/animation/Interpolator;

    return-object v0
.end method
