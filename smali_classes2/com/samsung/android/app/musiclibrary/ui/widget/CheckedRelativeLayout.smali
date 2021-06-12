.class public Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Landroid/widget/Checkable;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "http://schemas.android.com/apk/res-auto"

    const-string v0, "checkableId"

    const/4 v1, 0x0

    .line 35
    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->b:I

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 53
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 61
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/CheckedRelativeLayout;->a:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    :cond_0
    return-void
.end method
