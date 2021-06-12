.class Landroid/support/transition/FragmentTransitionSupport$1;
.super Landroid/support/transition/Transition$EpicenterCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$1;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$1;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/support/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/support/transition/Transition;)Landroid/graphics/Rect;
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iget-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$1;->val$epicenter:Landroid/graphics/Rect;

    return-object p1
.end method
