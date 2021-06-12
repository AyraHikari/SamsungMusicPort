.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;
    .locals 3

    .line 138
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;-><init>()V

    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_sound_picker"

    .line 140
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
