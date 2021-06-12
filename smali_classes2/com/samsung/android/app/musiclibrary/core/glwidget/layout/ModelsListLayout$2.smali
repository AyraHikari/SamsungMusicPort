.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;


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
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload<",
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

    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            ")V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic hide(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;->hide(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    return-void
.end method

.method public reload(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            "IZ)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->setVisibility(Z)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic reload(Ljava/lang/Object;IZ)V
    .locals 0

    .line 151
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;->reload(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    return-void
.end method
