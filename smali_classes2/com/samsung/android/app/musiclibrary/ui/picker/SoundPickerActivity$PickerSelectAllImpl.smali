.class final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PickerSelectAllImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

.field private final c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "mActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->c:Landroid/app/Activity;

    .line 396
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->c:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->select_tracks:I

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    return-void
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 6

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    .line 400
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->action_bar_title_winset:I

    .line 407
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->d:Landroid/widget/TextView;

    const-string v5, "holder.checkedItemCountText"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Landroid/widget/TextView;I)V

    .line 408
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->e:Landroid/widget/TextView;

    const-string v5, "holder.checkBoxBelowText"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Landroid/widget/TextView;I)V

    .line 409
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    const-string v3, "holder.checkBox"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    const-string v2, "holder.checkBox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 413
    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->blur_checkbox_background:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->c:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 411
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 401
    :cond_1
    :goto_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->action_bar_title_winset_2016b:I

    .line 402
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->d:Landroid/widget/TextView;

    const-string v5, "holder.checkedItemCountText"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Landroid/widget/TextView;I)V

    .line 403
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->e:Landroid/widget/TextView;

    const-string v5, "holder.checkBoxBelowText"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Landroid/widget/TextView;I)V

    .line 404
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    const-string v3, "holder.checkBox"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object v0
.end method
