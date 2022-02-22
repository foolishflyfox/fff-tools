#! /bin/zsh

GRADLE_VERSION_4=1
GRADLE_VERSION_5=2

def createJavaGradleSpringbootProject() {
    project_name="gradle$gradle_version-springboot"
    echo -n "please input project name (default is $project_name):"
    read tmp
    if [ $tmp ]; then
        project_name=$tmp
    fi
    echo "creating $project_name ..."
    echo "\tgradle version: $gradle_version"
    cp -r $FFF_DIR/project/gradle4-springboot .
    echo "finished! enjoy it ^_^"
    return
}

echo "creating project..."

export code_language=Java
echo "code language: $code_language"

export build_tool=gradle
echo "build tool: $build_tool"

# 选择 gradle 的版本号
if [ $build_tool="gradle" ]; then
    echo -n "choose gradle version [4 - 4.10, 5 - 5.2.1]:"
    read choose
    if [ -z $choose ] || [ $choose="1" ]; then
        gradle_version=4
    elif [ $choose="5" ]; then
        gradle_version=5
    fi
fi

echo -n "create spring-boot project [y/n]:" 
read is_spring_boot
if [ -z $is_spring_boot]; then
    is_spring_boot=y
fi

if [ $is_spring_boot = "y" ] || [ $is_spring_boot = "Y" ] || [ $is_spring_boot = "yes" ]; then
    echo "creating spring-boot project..."
    createJavaGradleSpringbootProject
else
    echo "creating normal project..."
fi


