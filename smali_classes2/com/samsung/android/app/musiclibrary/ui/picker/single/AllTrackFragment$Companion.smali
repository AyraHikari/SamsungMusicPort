.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;
    .locals 3

    .line 78
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "args_audio_id"

    .line 80
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
