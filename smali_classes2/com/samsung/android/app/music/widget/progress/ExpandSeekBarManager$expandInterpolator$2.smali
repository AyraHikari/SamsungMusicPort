.class final Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/animation/Interpolator;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;->INSTANCE:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/animation/Interpolator;
    .locals 4

    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandInterpolator$2;->invoke()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
