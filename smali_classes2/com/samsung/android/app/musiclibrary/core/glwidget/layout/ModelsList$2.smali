.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "T",
        "ListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
