.class public Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->b:I

    return-void
.end method

.method private final a(ZI)Ljava/lang/String;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 57
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_checked:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_not_checked:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_1

    .line 59
    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_nothing_selected:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 61
    :cond_1
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_n_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p1, :cond_2

    .line 64
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_double_tap_to_deselect_all:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_double_tap_to_select_all:I

    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 65
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_check_box:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 34
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->b:I

    if-lez v1, :cond_0

    .line 35
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 40
    :cond_1
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->d:Landroid/widget/TextView;

    const-string v3, "holder.checkedItemCountText"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    const-string v2, "holder.checkBox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    const-string v2, "holder.clickArea"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(ZI)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const-string p3, "holder.itemView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2

    .line 50
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 4

    .line 16
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 18
    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_select_all_checkbox:I

    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 21
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    .line 22
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->d:Landroid/widget/TextView;

    .line 23
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_checkbox_below_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->e:Landroid/widget/TextView;

    .line 24
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->click_area:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    .line 20
    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    return-object v0
.end method
