.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Companion;


# instance fields
.field private final b:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private c:Landroid/widget/ProgressBar;

.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->a()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b:I

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    sget p1, Lcom/samsung/android/app/musiclibrary/R$dimen;->sound_picker_list_item_progress_index_margin_end:I

    goto :goto_0

    .line 37
    :cond_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$dimen;->sound_picker_list_item_progress_margin_end:I

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->g:I

    return-void
.end method

.method private final a(Landroid/widget/ProgressBar;Landroid/database/Cursor;)V
    .locals 4

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->h()J

    move-result-wide v2

    const/4 p2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->c:Landroid/widget/ProgressBar;

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->c:Landroid/widget/ProgressBar;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->e:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b(I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p2, 0x8

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 49
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    const-string v1, "newView"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public final a()V
    .locals 2

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(J)V

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->d:I

    .line 124
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->e:I

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->d:I

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getItemViewType(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;->a()Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(Landroid/widget/ProgressBar;Landroid/database/Cursor;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->f:Z

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->c:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->f:Z

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->c:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->c:Landroid/widget/ProgressBar;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 111
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->d:I

    if-lez v0, :cond_5

    mul-int/lit16 v0, p1, 0x3e8

    .line 112
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->d:I

    div-int/2addr v0, v1

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->c:Landroid/widget/ProgressBar;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_5
    const-string v0, "SoundPicker"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " updatePosition() - duration < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->e:I

    return-void
.end method

.method protected b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 64
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->text1Index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 66
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->text1Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x0

    .line 68
    check-cast v0, Ljava/lang/CharSequence;

    .line 69
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->text2Index:I

    if-eq v2, v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->text2Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 72
    :cond_2
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->text3Index:I

    if-eq v2, v1, :cond_3

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->text3Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    .line 76
    :cond_3
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
