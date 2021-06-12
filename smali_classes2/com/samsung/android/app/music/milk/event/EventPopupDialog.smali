.class public final Lcom/samsung/android/app/music/milk/event/EventPopupDialog;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/event/EventPopupDialog$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

.field private c:Z

.field private d:Lcom/samsung/android/app/music/milk/event/EventPopupListener;

.field private final e:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;-><init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)Lcom/samsung/android/app/music/model/milkevent/EventPopup;
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->b:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    if-nez p0, :cond_0

    const-string v0, "popup"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final a(Landroid/support/v4/app/FragmentActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 109
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 113
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;

    .line 114
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    .line 113
    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/music/milk/event/EventPopupImageViewPublisher;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/ImageView;I)V

    const p1, 0x7f1000b6

    .line 116
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    .line 117
    sget-object p2, Lcom/samsung/android/app/music/main/EventManagerTask;->b:Lcom/samsung/android/app/music/main/EventManagerTask$Companion;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/main/EventManagerTask$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/milk/event/EventPopupListener;)V
    .locals 1

    const-string v0, "eventPopupListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->d:Lcom/samsung/android/app/music/milk/event/EventPopupListener;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, "activity ?: return super\u2026ialog(savedInstanceState)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance p1, Landroid/app/Dialog;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f040122

    .line 75
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "popup"

    .line 79
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "it.getParcelable(UiConstants.POPUP)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->b:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    const v2, 0x7f130391

    .line 81
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    new-instance v3, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;Landroid/app/Dialog;Landroid/support/v4/app/FragmentActivity;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f13038f

    .line 86
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "this"

    .line 87
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->b:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    if-nez v3, :cond_0

    const-string v4, "popup"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->a(Landroid/support/v4/app/FragmentActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f130390

    .line 90
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 94
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1004f2

    const v5, 0x3fa66666    # 1.3f

    .line 93
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IF)F

    move-result v3

    .line 91
    invoke-virtual {v2, v1, v3}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 98
    new-instance v1, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$2;-><init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;Landroid/app/Dialog;Landroid/support/v4/app/FragmentActivity;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-object p1

    .line 71
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->d:Lcom/samsung/android/app/music/milk/event/EventPopupListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventPopupListener;->a(Ljava/lang/Boolean;)V

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onStart()V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method
