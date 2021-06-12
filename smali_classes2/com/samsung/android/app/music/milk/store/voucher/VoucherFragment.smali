.class public final Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$VoucherEmptyViewCreator;,
        Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$Companion;


# instance fields
.field private c:Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;

.field private final d:Lkotlin/Lazy;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final f:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "emptyView"

    const-string v4, "getEmptyView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->b:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 41
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$emptyView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$emptyView$2;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->d:Lkotlin/Lazy;

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onInputVoucherListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$onInputVoucherListener$1;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V

    check-cast v0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->f:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->c:Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;

    return-object p0
.end method

.method private final a(Landroid/database/Cursor;J)V
    .locals 1

    .line 182
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->a(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->e(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;Landroid/database/Cursor;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Landroid/database/Cursor;J)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "VoucherFragment"

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVoucher : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "VoucherFragment"

    const-string v0, "registerVoucher need to sign in or sign up"

    .line 164
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 169
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 170
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$1;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 173
    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$registerVoucher$2;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 170
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final a(Z)V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->d()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final e(I)V
    .locals 4

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoucherFragment"

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlingVoucherError errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0481

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b01ee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b025b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0259

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0258

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b01ec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b025a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b027e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "it"

    .line 214
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->c()Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 151
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-gtz p2, :cond_1

    const/4 p1, 0x1

    .line 152
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Z)V

    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 136
    new-instance p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;-><init>()V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;
    .locals 2

    .line 144
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "voucherTitle"

    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    .line 144
    check-cast v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Builder;

    .line 146
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Builder;->a()Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "UiList"

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".toString()  onCreateView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f040192

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026bar_kt, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const v1, 0x7f0b01bb

    .line 94
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.milk_coupon_tab)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 97
    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->f:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    invoke-direct {p2, v1, v2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;

    const/16 v3, -0x3e8

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;->a()Landroid/view/View;

    move-result-object v4

    const-string v5, "this.build()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 97
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->c:Lcom/samsung/android/app/music/milk/store/voucher/VoucherInputCodeHeader;

    .line 101
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    const/4 p2, 0x0

    .line 103
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->c(Z)V

    const v2, 0x7f13013e

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 112
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    new-array v0, v0, [I

    const/16 v3, -0x3e9

    aput v3, v0, p2

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 111
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 116
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 115
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v4, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    .line 105
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 140
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
