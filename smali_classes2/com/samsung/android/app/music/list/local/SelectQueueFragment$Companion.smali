.class public final Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SelectQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/samsung/android/app/music/list/local/SelectQueueFragment;
    .locals 2

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_tab_pos"

    .line 244
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    new-instance p1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;-><init>()V

    .line 246
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
