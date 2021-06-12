.class final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 371
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->access$getEmptyMediaMetadata$p(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;)Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/media/MediaMetadata;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method
