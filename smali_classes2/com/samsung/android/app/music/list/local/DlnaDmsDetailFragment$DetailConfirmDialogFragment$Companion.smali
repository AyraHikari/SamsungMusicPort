.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;J)Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;
    .locals 2

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_title"

    .line 380
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_audio_id"

    .line 381
    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "key_list_type"

    .line 382
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    new-instance p1, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 373
    invoke-static {}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
