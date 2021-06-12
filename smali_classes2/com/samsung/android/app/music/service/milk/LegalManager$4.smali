.class Lcom/samsung/android/app/music/service/milk/LegalManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/LegalManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/samsung/android/app/music/service/milk/LegalManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/LegalManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->d:Lcom/samsung/android/app/music/service/milk/LegalManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "LegalManager"

    const-string v0, "checked signed-in"

    .line 163
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->d:Lcom/samsung/android/app/music/service/milk/LegalManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/LegalManager;->a(Lcom/samsung/android/app/music/service/milk/LegalManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/LegalManager$4;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
