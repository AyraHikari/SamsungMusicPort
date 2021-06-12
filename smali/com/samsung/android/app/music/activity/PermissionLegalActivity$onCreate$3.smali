.class final Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

.field final synthetic b:Z

.field final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;ZLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->b:Z

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "PermissionLegalActivity"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button Clicked() isPermissionRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", buttonTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 136
    sget-object v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->AGREE:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_3

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->b(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Lcom/samsung/android/app/music/activity/IPermissionTnC;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/music/activity/IPermissionTnC;->a()V

    .line 138
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->b:Z

    if-nez p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "first_use"

    .line 140
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 507
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "first_use"

    .line 141
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 508
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->setResult(I)V

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->finish()V

    goto/16 :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/activity/PermissionImpl;

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    check-cast v1, Landroid/app/Activity;

    .line 148
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_permissions"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "intent.getStringArrayListExtra(KEY_PERMISSIONS)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/activity/PermissionImpl;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->d(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/PermissionImpl;->a(Landroid/view/ViewGroup;)V

    .line 152
    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->e(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/activity/PermissionImpl;->a(Landroid/view/View;Landroid/view/View;)V

    .line 149
    check-cast v0, Lcom/samsung/android/app/music/activity/IPermissionTnC;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Lcom/samsung/android/app/music/activity/IPermissionTnC;)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Landroid/view/View;)V

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->d(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->b(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Landroid/view/View;)V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->e(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->START:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->c:Landroid/widget/TextView;

    const-string v0, "helpButtonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_3
    sget-object v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->START:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    if-ne p1, v0, :cond_6

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "first_use"

    .line 163
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 511
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "first_use"

    .line 164
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Z)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->c(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Lcom/samsung/android/app/music/activity/IPermissionTnC;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/samsung/android/app/music/activity/IPermissionTnC;->a()V

    .line 169
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b()V

    :cond_6
    :goto_0
    return-void
.end method
