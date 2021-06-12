.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$doOnLayout$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 37
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$doOnLayout$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 p5, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FZILjava/lang/Object;)V

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    return-void
.end method
