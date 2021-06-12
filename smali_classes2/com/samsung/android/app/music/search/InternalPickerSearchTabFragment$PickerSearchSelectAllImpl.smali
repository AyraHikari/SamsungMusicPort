.class final Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PickerSearchSelectAllImpl"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;->a:Landroid/app/Activity;

    .line 614
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    const v1, 0x7f0b0350

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    return-void
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 4

    .line 619
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;-><init>()V

    .line 620
    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;->a:Landroid/app/Activity;

    const v2, 0x7f130283

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    .line 622
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const v2, 0x7f130170

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    .line 623
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const v2, 0x7f1303b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->d:Landroid/widget/TextView;

    .line 624
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const v2, 0x7f1303b0

    .line 625
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->e:Landroid/widget/TextView;

    .line 626
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    const v2, 0x7f13031b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    .line 628
    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->d:Landroid/widget/TextView;

    const v3, 0x7f0f004b

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Landroid/widget/TextView;I)V

    .line 629
    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Landroid/widget/TextView;I)V

    return-object v0
.end method
