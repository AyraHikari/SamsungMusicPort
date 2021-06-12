.class Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$6;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$6;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 206
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$6;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$6;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;

    return-void
.end method
