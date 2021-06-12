.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "StoreSearchPickerFragment"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picked items count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
