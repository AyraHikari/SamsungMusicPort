.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetailConfirmDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;

    .line 373
    const-class v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    sput-object v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 346
    sget-object v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "key_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "key_list_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v2, "key_audio_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 353
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const v5, 0x7f04006d

    const v6, 0x7f130217

    const/4 v7, 0x1

    .line 356
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const v10, 0x7f0b019f

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 353
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 359
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v4, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x7f0b00cd

    const/4 v5, 0x0

    .line 360
    invoke-virtual {p1, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 361
    check-cast v3, Landroid/widget/ListAdapter;

    new-instance v4, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;IJ)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(acti\u2026               }.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
