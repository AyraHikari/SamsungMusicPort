.class public final Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([J)Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;
    .locals 3

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;-><init>()V

    .line 247
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "args_ids"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
