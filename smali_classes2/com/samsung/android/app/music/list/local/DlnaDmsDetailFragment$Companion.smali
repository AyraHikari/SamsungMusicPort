.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
    .locals 2

    const-string v0, "dlnadmsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_keyword"

    .line 395
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance p1, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
