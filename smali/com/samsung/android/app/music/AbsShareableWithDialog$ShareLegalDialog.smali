.class public final Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/AbsShareableWithDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareLegalDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;


# instance fields
.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-[J",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->a:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->b:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[J",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0165

    .line 225
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0b0166

    .line 226
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0b00e5

    .line 227
    new-instance v2, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;Landroid/support/v4/app/FragmentActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(acti\u2026 }\n            }.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
