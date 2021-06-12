.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZ)V

    :cond_0
    return-void
.end method
