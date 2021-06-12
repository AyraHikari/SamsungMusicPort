.class public Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/CheckBox;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 24
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
