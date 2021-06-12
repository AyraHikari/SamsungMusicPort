.class Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;I)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
