.class public Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field private final b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

.field private d:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->b:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->d:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 32
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const v2, 0x7f04015d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->c:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->c:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->d:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->setInputVoucherListener(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->c:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->c:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->c:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->setVoucherCode(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->c:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Z)V

    :cond_0
    return-void
.end method
