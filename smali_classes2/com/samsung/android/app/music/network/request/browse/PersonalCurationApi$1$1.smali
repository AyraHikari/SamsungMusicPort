.class Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;->a()Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1$1;->a:Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1$1;->a:Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;->a:Landroid/content/Context;

    const-string v1, "key_browse_personal_curation_json_data"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PersonalCurationApi"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPersonalCuration putString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1$1;->a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)V

    return-void
.end method
