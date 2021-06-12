.class final Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$id$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$id$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$id$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent$id$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->access$getPath$p(Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track/"

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "/contents"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
