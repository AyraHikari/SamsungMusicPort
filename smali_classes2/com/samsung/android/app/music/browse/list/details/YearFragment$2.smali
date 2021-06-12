.class Lcom/samsung/android/app/music/browse/list/details/YearFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/YearFragment;->e()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/util/CollectionsUtils$Condition<",
        "Lcom/samsung/android/app/music/model/base/YearBaseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/YearFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/YearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/base/YearBaseModel;)Z
    .locals 1

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/YearBaseModel;->getYearId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/YearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 168
    check-cast p1, Lcom/samsung/android/app/music/model/base/YearBaseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/YearFragment$2;->a(Lcom/samsung/android/app/music/model/base/YearBaseModel;)Z

    move-result p1

    return p1
.end method
