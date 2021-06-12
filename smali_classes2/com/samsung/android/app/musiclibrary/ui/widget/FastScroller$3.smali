.class Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1089
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;Z)Z

    return-void
.end method
