.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;
    .locals 3

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;-><init>()V

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_sound_picker"

    .line 98
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
