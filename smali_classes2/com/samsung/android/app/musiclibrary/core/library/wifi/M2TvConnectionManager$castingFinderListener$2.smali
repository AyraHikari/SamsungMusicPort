.class final Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;
    .locals 1

    .line 27
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;)V

    check-cast v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;->invoke()Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;

    move-result-object v0

    return-object v0
.end method
