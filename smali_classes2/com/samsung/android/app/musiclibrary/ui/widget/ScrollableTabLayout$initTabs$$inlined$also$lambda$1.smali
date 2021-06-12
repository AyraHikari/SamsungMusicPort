.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

.field final synthetic c:I

.field final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;ILkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;->c:I

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "ScrollableTabLayout"

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick() position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
