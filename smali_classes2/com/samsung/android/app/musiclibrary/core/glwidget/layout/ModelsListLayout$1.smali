.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory<",
        "T",
        "ListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListModel;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            ")V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    return-void
.end method

.method public bridge synthetic recycle(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    return-void
.end method
