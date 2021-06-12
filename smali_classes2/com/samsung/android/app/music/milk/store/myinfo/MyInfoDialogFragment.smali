.class public final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 2

    .line 43
    check-cast p2, Landroid/view/View;

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;

    invoke-direct {v1, p2, v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "activity ?: return super\u2026ialog(savedInstanceState)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f040190

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f13045d

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 22
    new-instance v3, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$onCreateDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$onCreateDialog$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f130459

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "view.findViewById(R.id.radio_info_dialog_dot_1)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f130457

    .line 25
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "view.findViewById(R.id.r\u2026io_info_dialog_content_1)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 23
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;->a(Landroid/view/View;Landroid/widget/TextView;)V

    const v1, 0x7f13045b

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "view.findViewById(R.id.radio_info_dialog_dot_2)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f130458

    .line 29
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "view.findViewById(R.id.r\u2026io_info_dialog_content_2)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 27
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;->a(Landroid/view/View;Landroid/widget/TextView;)V

    const v1, 0x7f13045c

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "view.findViewById(R.id.radio_info_dialog_dot_3)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f13045a

    .line 33
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "view.findViewById(R.id.r\u2026io_info_dialog_content_3)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 31
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;->a(Landroid/view/View;Landroid/widget/TextView;)V

    .line 36
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "AlertDialog.Builder(acti\u2026dDrawable(null)\n        }"

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
