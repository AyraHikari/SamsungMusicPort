.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PickerSearchSelectAllImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

.field private final c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->c:Landroid/app/Activity;

    .line 246
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->c:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->select_tracks:I

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    return-void
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 5

    .line 249
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->c:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    .line 251
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    .line 252
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->d:Landroid/widget/TextView;

    .line 253
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_checkbox_below_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->e:Landroid/widget/TextView;

    .line 254
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->click_area:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    .line 255
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    const-string v2, "checkBox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->sound_picker_checkbox_text_dark:I

    .line 259
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->d:Landroid/widget/TextView;

    const-string v4, "holder.checkedItemCountText"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Landroid/widget/TextView;I)V

    .line 260
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->e:Landroid/widget/TextView;

    const-string v4, "holder.checkBoxBelowText"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Landroid/widget/TextView;I)V

    return-object v0
.end method
